module FastToF
  VERSION = "0.1.0"

  @[Link(ldflags: "#{__DIR__}/ext/fast_to_f.o")]
  lib Lib
    fun fast_double_parser_parse_number(str : UInt8*, x : Float64*) : UInt8*
  end

  def self.parse_internal(s : UInt8*) : Tuple(Float64, UInt8*)
    res = Lib.fast_double_parser_parse_number(s, out x)
    {x, res}
  end

  def self.parse?(s : String) : Float64?
    x, end_s = parse_internal(s.to_unsafe)
    x unless end_s.null?
  end
end
