package jp.takkjoga.valley.util
{

import jp.takkjoga.valley.util.token.Token;

public class TokenIterator implements IIterator
{
    private var _index:int = 0;
    private var _data:Token;

    public function TokenIterator(data:Token):void
    {
        this._data = data;
    }

    public function reset():void
    {
        this._index = 0;
    }

    public function get next():Object
    {
        return this._data.parsedList[this._index ++];
    }

    public function hasNext():Boolean
    {
        return this._data.parsedList.length > this._index;
    }

    public function get current():Object
    {
        return this._data.parsedList[this._index];
    }
}
}
