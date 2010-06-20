package jp.takkjoga.valley.util.color
{

public interface IColorize
{
    function _match(token:String):Boolean;
    function _process(token:String):String;
}
}
