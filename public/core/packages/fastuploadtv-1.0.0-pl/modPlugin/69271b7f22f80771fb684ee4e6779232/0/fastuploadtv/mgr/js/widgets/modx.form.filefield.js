/*!
 * Ext JS Library 3.4.0
 * Copyright(c) 2006-2011 Sencha Inc.
 * licensing@sencha.com
 * http://www.sencha.com/license
 */
Ext.ns('MODx.form');

//noinspection JSValidateTypes
/**
 * @class MODx.form.FileField
 * @extends Ext.form.TextField
 * Creates a file upload field.
 * @xtype fileuploadfield
 */
MODx.form.FileField = function(config) {
    config = config || {};

    //noinspection JSValidateTypes
    Ext.apply(config,{

        /** Text to display on button */
        buttonText: 'Select file...'

        /** Show the textual part of the input */
        ,showTextField: true

        /** Disable user interaction with textual part of input */
        ,disabled: true



        ,listeners: {
            'afterrender':  {fn:this.onAfterRender,scope:this}
        }
    })
    MODx.form.FileField.superclass.constructor.call(this,config);

};
Ext.extend(MODx.form.FileField,Ext.form.TextField,{


    onAfterRender: function(){

        // Show/Hide the text field element
        if( ! this.showTextField ){
            this.el.dom.type = 'hidden';
        }

        // Create the file input element
        this.FileInput = this.el.wrap().createChild({
            id: this.id+'_FileInput',
            name: this.id,
            cls: 'x-form-file',
            tag: 'input',
            type: 'file',
            accept: this.acceptedMIMEtypes,
            size: 13
        });
        this.FileInput.on('change',this.onFileSelected,this)
        this.FileInput.hide()

        // Create a nice button
        this.Button = MODx.load({
            xtype: 'button'
            ,text: this.buttonText
            ,renderTo: this.el.wrap()
            ,cls: 'FileField-button'
            ,css:{
                 margin: '0px'
                ,float: 'left'
            }
            ,handler: this.onButtonClick
            ,scope: this
        })

    }



    ,onButtonClick: function(){
        document.getElementById(this.id+'_FileInput').click()
    }
    ,click: function(){ this.onButtonClick() }


    ,onFileSelected: function(){
        var v = this.FileInput.dom.value;

        // Validate the input file against MIMEtypes
        if(!this.validateInputFile()){   return   }

        // Update the form field
        this.setValue(v);

        // Fire the change event
        this.fireEvent('change', this, v)
    }


    ,createValueField: function(){
        this.ValueField = MODx.load({
            xtype: 'textfield'
            ,name: this.name
            ,value: this.tvValue
        })
        return this.ValueField
    }



    ,createFileInput: function(){
        console.log(this)
        this.FileInput = this.el.wrap.createChild({
            id: this.id,
            name: this.name||this.getId(),
            cls: 'x-form-file',
            tag: 'input',
            type: 'file',
            accept: this.acceptedMIMEtypes,
            size: 1
        });
        return this.FileInput;
    }


    ,createForm: function(){
        this.Form = MODx.load({
            xtype: 'modx-formpanel'
            ,renderTo: 'modx-content'
            ,url: MODx.config.assets_url+'components/tveasyupload/connector.php'
            ,baseParams: {
                action: 'browser/file/upload'
                ,tv_id: this.tv_id
                ,res_id: this.res_id
                ,ms_id: this.ms_id
            }
            ,items:[
                this.createFileInput()
            ]
        })

        this.Form.form.errorReader = {
            read: function(response){
                console.log('aaaaaaaaaa',response);
                return Ext.util.JSON.decode(response.responseText)
            }
        }
    }



    ,validateInputFile: function(){
        return true;
    }



});
Ext.reg('filefield', MODx.form.FileField);
