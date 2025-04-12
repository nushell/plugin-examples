use std/testing *
use std/assert

@test
def test [] {
    let expected = (0..9 | generate {|i| {out: {one: $i, two: ($i * 2), three: ($i * 3)}, next: ($i + 1)}} 0)
    assert equal (node_example 1 a) $expected
    assert length (node_example 1 a) 10
}
