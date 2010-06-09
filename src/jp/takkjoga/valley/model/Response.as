package jp.takkjoga.valley.Model
{

import flash.net.*;

class Response {
    private var data:XML;

    function Response(event) {
        loader = URLLoader(event.target);
        trace("on complete");
        var result:XML = new XML(loader.data);

        if (result == '') {
            Alert.show("responce is empty");
        } else if (result.status == 'ng') {
            Alert.show(result.message);
        } else if (result.rows.attribute('count') == 0) {
            Alert.show("result count is zero");
        } else {
            var columns:Array = new Array();
            var row:XML = result.rows.elements()[0];
            for (var i:int = 0; i < row.elements().length(); i ++) {
                var dataGridColumn:DataGridColumn = new DataGridColumn();
                var fieldName:String = row.elements()[i].name();
                dataGridColumn.headerText = fieldName;
                dataGridColumn.dataField = fieldName;
                columns.push(dataGridColumn);
            }
            previewTable.columns = columns;
            previewTable.dataProvider = row;
        }
    }
}
}
