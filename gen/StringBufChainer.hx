
class StringBufChainer
{
    static var isWindows:Bool = (Sys.systemName() == 'Windows');

    public static function append(_buffer : StringBuf, _text : String) : StringBuf
    {
        _buffer.add(_text);

        return _buffer;
    }

    public static function newline(_buffer : StringBuf) : StringBuf
    {
        if (isWindows) {
            _buffer.add('\r\n');
        }
        else {
            _buffer.add('\n');
        }

        return _buffer;
    }

    public static function tab(_buffer : StringBuf) : StringBuf
    {
        _buffer.add('\t');

        return _buffer;
    }

    public static function tabSpaces(_buffer : StringBuf) : StringBuf
    {
        _buffer.add('    ');

        return _buffer;
    }
}
