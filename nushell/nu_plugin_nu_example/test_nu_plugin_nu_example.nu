use std/testing *
use std/assert

@test
def test [] {
    let expected = (0..9 | generate {|i| {out: {one: 0, two: $i, three: ($i * 2)}, next: ($i + 1)}} 0)
    assert equal (nu_plugin_nu_example 1 a) $expected
    assert length (nu_plugin_nu_example 1 a) 10
}
