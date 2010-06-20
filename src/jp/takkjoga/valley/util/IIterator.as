package jp.takkjoga.valley.util
{

public interface IIterator
{
    function reset():void;
    function get next():Object;
    function hasNext():Boolean;
    function get current():Object;
}
}
