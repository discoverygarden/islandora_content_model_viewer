Ext.onReady(function(){
  Ext.define('ContentModelViewer.widgets.FileUpload', {
    extend: 'Ext.form.field.File',
    xtype: 'filefield',
    name: 'file',
    fieldLabel: 'File'
  })
    
  Ext.define('ContentModelViewer.widgets.ManagePanel', {
    extend: 'Ext.panel.Panel',
    itemId: 'manage',
    title: 'Manage',
    layout: {
      type: 'border'
    },
    items: [{
      xtype: 'panel',
      region: 'north',
      height: 255,
      layout: {
        type: 'border'
      },
      items: [{
        xtype: 'form',
        title: 'Object Properties',
        height: 245,
        region: 'center',
        bodyPadding: 10,
        waitMsgTarget: true,
        reader: Ext.create('Ext.data.reader.Json', {
          type: 'json',
          model: 'ContentModelViewer.models.ObjectProperties',
          root: 'data',
          successProperty: 'success'
        }),
        items: [{
          xtype: 'textfield',
          fieldLabel: 'Label',
          name: 'label',
          width: 350
        }, {
          xtype: 'textfield',
          fieldLabel: 'Owner',
          name: 'owner',
          width: 350
        }, {
          xtype: 'combobox',
          fieldLabel: 'State',
          name: 'state',
          queryMode: 'local',
          displayField: 'name',
          valueField: 'value',
          value: 'I',
          store: Ext.create('Ext.data.Store', {
            fields: ['value', 'name'],
            data : [{
              value:'A', 
              name:'Active'
            }, {
              value:'I', 
              name:'Inactive'
            }, {
              value:'D', 
              name:'Deleted'
            }]
          })
        }, {
          xtype: 'displayfield',
          fieldLabel: 'Date Created',
          name: 'created',
          width: 400
        }, {
          xtype: 'displayfield',
          fieldLabel: 'Last Modified',
          name: 'modified',
          width: 400
        }],
        buttons: [{
          text: 'Save Changes',
          formBind: true, // Only enabled once the form is valid
          handler: function(button) {
            button.up('form').getForm().submit({
              url: ContentModelViewer.properties.url.object.properties,
              waitMsg: 'Saving Data...',
              success: function(form, action) {
                var store = Ext.data.StoreManager.lookup('objectProperties');
                var record = store.first();
                record.set(action.result.data);
                form.loadRecord(record);
              }
            });
          }
        }],
        dockedItems: [{
          xtype: 'toolbar',
          dock: 'top',
          items: [{
            xtype: 'button',
            text: 'Edit Permissions',
            cls: 'x-btn-text-icon',
            iconCls: 'edit-datastream-icon',
            id: 'edit-xacml',
            handler: function() {
              var pid = ContentModelViewer.properties.pid;
              var models = ContentModelViewer.properties.url.object.models;
              var dsid = (models.indexOf('islandora:collectionCModel') > -1)? 'CHILD_SECURITY': 'POLICY';
              Ext.Msg.show({
                title:'Edit Permissions',
                msg: 'Open the XACML Editor (will navigate away from this page)?',
                buttons: Ext.Msg.YESNO,
                fn: function(choice) {
                  if(choice == 'yes') {
                    var url = Drupal.settings.basePath + 'xacml/' + pid + '/' + dsid;
                    location.href = url; 
                  }
                }
              });
            }
          }, {
            xtype: 'button',
            text: 'Purge Object',
            cls: 'x-btn-text-icon',
            iconCls: 'remove-datastream-icon',
            id: 'purge-object',
            handler : function() {
              Ext.Msg.show({
                title:'Purge Object?',
                msg: 'Are you sure you want to purge this object? This action cannot be undone.',
                buttons: Ext.Msg.YESNO,
                fn: function(choice) {
                  if(choice == 'yes') {
                    var url = ContentModelViewer.properties.url.object.purge;
                    Ext.Ajax.request({
                      url: url,
                      method: 'POST',
                      success: function(response){
                        var data;
                        data = Ext.decode(response.responseText);
                        Ext.Msg.alert('Status', data.msg);
                        if (data.success === true) {
                          location.href = Drupal.settings.basePath + '/fedora/repository';                                          }
                      }
                    });  
                  }
                },
                icon: Ext.window.MessageBox.QUESTION
              });
            }
          }]
        }],
        listeners: {
          afterrender: function(form) {
            form.getForm().load({
              method: 'GET',
              url: ContentModelViewer.properties.url.object.properties,
              waitMsg: 'Loading...'
            });
          }
        }
      }, {
        xtype: 'panel',
        title: 'Datastream Preview',
        region: 'east',
        width: 350
      }]
    }, {
      xtype: 'gridpanel',
      title: 'Datastreams',
      id: 'manage-panel-datastreams',
      region: 'center',
      selType: 'rowmodel',
      plugins: [Ext.create('Ext.grid.plugin.RowEditing', {
        clicksToEdit: 2
      })],
      columns: [{
        header: 'ID',  
        dataIndex: 'dsid',
        flex: 1
      }, {
        header: 'Label', 
        dataIndex: 'label', 
        field:{
          xtype:'textfield',
          allowBlank:false
        },
        flex: 1
      }, {
        header: 'State', 
        dataIndex: 'state',
        field:{
          xtype:'combobox',
          store: Ext.create('Ext.data.Store', {
            fields: ['value', 'name'],
            data : [{
              "value":"A", 
              "name":"Active"
            }, {
              "value":"I", 
              "name":"Inactive"
            }]
          }),
          queryMode: 'local',
          displayField: 'name',
          valueField: 'value',
          value: "Inactive"
        }
      }, {
        header: 'Mime Type', 
        dataIndex: 'mime',
        field:{
          xtype:'textfield',
          allowBlank:false
        },
        flex: 1
      }, {
        header: 'Date Created', 
        dataIndex: 'created',
        flex: 1
      }],
      listeners: {
        selectionchange: function(view, selections, options) {
          var button, record = selections[0];
          if(record) {
            button = Ext.getCmp('remove-datastream');
            button.enable();
            button = Ext.getCmp('edit-datastream');
            record.get('edit') ? button.enable() : button.disable();
            button = Ext.getCmp('view-datastream');
            record.get('view') ? button.enable() : button.disable();
            button = Ext.getCmp('download-datastream');
            record.get('download') ? button.enable() : button.disable();
            // Load some info into the preview panel.
          }
        }      
      },
      store: Ext.data.StoreManager.lookup('datastreams'),
      dockedItems: [{
        xtype: 'toolbar',
        dock: 'top',
        items: [{
          xtype: 'button',
          text: 'Add',
          cls: 'x-btn-text-icon',
          iconCls: 'add-datastream-icon',
          id: 'add-datastream',
          handler : function() {
            Ext.create('Ext.window.Window', {
              title: 'Add Datastream',
              height: 250,
              width: 375,
              layout: 'fit',
              items: [{
                xtype: 'form',
                bodyPadding: 10,
                items: [{
                  xtype: 'textfield',
                  name: 'dsid',
                  fieldLabel: 'Identifier',
                  width: 300
                }, {
                  xtype: 'textfield',
                  name: 'label',
                  fieldLabel: 'Label',
                  width: 300
                }, {
                  xtype:'combobox',
                  name: 'state',
                  fieldLabel: 'State',
                  store: Ext.create('Ext.data.Store', {
                    fields: ['value', 'name'],
                    data : [{
                      "value":"A", 
                      "name":"Active"
                    }, {
                      "value":"I", 
                      "name":"Inactive"
                    }]
                  }),
                  queryMode: 'local',
                  displayField: 'name',
                  valueField: 'value',
                  value: "I"
                }, {
                  xtype:'combobox',
                  name: 'control',
                  fieldLabel: 'Control Group',
                  store: Ext.create('Ext.data.Store', {
                    fields: ['value', 'name'],
                    data : [{
                      "value":"X", 
                      "name":"Internal XML"
                    }, {
                      "value":"M", 
                      "name":"Managed Content"
                    }, {
                      "value":"E", 
                      "name":"External Referenced Content"
                    }, {
                      "value":"R", 
                      "name":"Redirect Referenced Content"
                    }]
                  }),
                  queryMode: 'local',
                  displayField: 'name',
                  valueField: 'value',
                  value: "M",
                  width: 300,
                  listeners: {
                    change: function(combobox) {
                      var form = combobox.up('form');
                      var upload_panel = form.getComponent('upload-panel');
                      var external = combobox.value == 'E';
                      var redirect = combobox.value == 'R';
                      var item = (external || redirect) ? 'url' : 'file';
                      upload_panel.getLayout().setActiveItem(item);
                    }
                  }
                }, {
                  xtype: 'panel',
                  unstyled: true,
                  id: 'upload-panel',
                  layout: {
                    type: 'card'
                  },
                  items: [
                  Ext.create('ContentModelViewer.widgets.FileUpload', {
                    itemId: 'file'
                  }), {
                    xtype:'textfield',
                    itemId: 'url',
                    fieldLabel: 'Location',
                    name: 'url'
                  }],
                  buttons: [{
                    text: 'Add',
                    formBind: true, // Only enabled once the form is valid
                    handler: function(button) {
                      button.up('form').getForm().submit({
                        url: ContentModelViewer.properties.url.datastream.add,
                        waitMsg: 'Creating...',
                        success: function(form, action) {
                          var pager = Ext.getCmp('datastream-pager');
                          pager.doRefresh();
                          Ext.Msg.alert('Status', 'Successfully Added datastream.');
                          var window = button.up('window');
                          window.close();
                        },
                        failure: function(form, action) {
                          switch (action.failureType) {
                            case Ext.form.action.Action.CLIENT_INVALID:
                              Ext.Msg.alert('Failure', 'Form fields may not be submitted with invalid values');
                              break;
                            case Ext.form.action.Action.CONNECT_FAILURE:
                              Ext.Msg.alert('Failure', 'Ajax communication failed');
                              break;
                            case Ext.form.action.Action.SERVER_INVALID:
                              Ext.Msg.alert('Failure', action.result.msg);
                          }
                          var window = button.up('window');
                          window.close();
                        }
                      });
                    }
                  }]
                }]
              }]
            }).show();
          }
        }, {
          xtype: 'button',
          text: 'Remove',
          disabled: true,
          cls: 'x-btn-text-icon',
          iconCls: 'remove-datastream-icon',
          id: 'remove-datastream',
          handler : function() {
            var grid = this.up('gridpanel');
            var selectionModel = grid.getSelectionModel();
            Ext.Msg.show({
              title:'Remove Datastream?',
              msg: 'Are you sure you want to remove this datastream? This action cannot be undone.',
              buttons: Ext.Msg.YESNO,
              fn: function(choice) {
                if(choice == 'yes') {
                  var selectionModel = grid.getSelectionModel();
                  if(selectionModel.hasSelection()) {
                    var record = selectionModel.selected.first();
                    var dsid = record.get('dsid');
                    var url = ContentModelViewer.properties.url.datastream.purge(dsid);
                    Ext.Ajax.request({
                      url: url,
                      method: 'POST',
                      success: function(response){
                        var pager = Ext.getCmp('datastream-pager');
                        pager.doRefresh();
                        Ext.Msg.alert('Status', 'Successfully removed datastream.');
                      }
                    });
                  }
                }
              },
              icon: Ext.window.MessageBox.QUESTION
            });
          }
        }, {
          xtype: 'button',
          text: 'Edit',
          disabled: true,
          cls: 'x-btn-text-icon',
          iconCls: 'edit-datastream-icon',
          id: 'edit-datastream',
          handler : function() {
            var grid = this.up('gridpanel');
            var selectionModel = grid.getSelectionModel();
            if(selectionModel.hasSelection()) {
              var record = selectionModel.selected.first();
              var form = Ext.get("datastream-edit-form");
              form.set({
                action: window.location // Same Spot.
              });
              var dsid = form.down('input[name="dsid"]');
              dsid.set({
                value: record.get('dsid')
                });
              var action = form.down('input[name="action"]');
              action.set({
                value: 'edit'
              });
              document.forms["datastream-edit-form"].submit();              
            }
          }
        },  {
          xtype: 'button',
          text: 'Download',
          disabled: true,
          cls: 'x-btn-text-icon',
          iconCls: 'download-datastream-icon',
          id: 'download-datastream',
          handler : function(button) {
            var grid = this.up('gridpanel');
            var selectionModel = grid.getSelectionModel();
            if(selectionModel.hasSelection()) {
              var record = selectionModel.selected.first();
              var dsid = record.get('dsid');
              var url = ContentModelViewer.properties.url.datastream.download(dsid);
              var form = Ext.get("datastream-download-form");
              form.set({
                action: url
              });
              document.forms["datastream-download-form"].submit();
            }
          }
        }, {
          xtype: 'button',
          text: 'View',
          disabled: true,
          cls: 'x-btn-text-icon',
          iconCls: 'view-datastream-icon',
          id: 'view-datastream',
          handler : function() {
            var grid = this.up('gridpanel');
            var selectionModel = grid.getSelectionModel();
            if(selectionModel.hasSelection()) {
              var record = selectionModel.selected.first();
              ContentModelViewer.functions.selectDatastreamRecord(record);
              ContentModelViewer.functions.viewSelectedDatastreamRecord();
            }
          }
        }]
      },{
        id: 'datastream-pager',
        xtype: 'pagingtoolbar',
        store: Ext.data.StoreManager.lookup('datastreams'),   // same store GridPanel is using
        dock: 'bottom',
        displayInfo: true
      }]
    }]
  })
});
