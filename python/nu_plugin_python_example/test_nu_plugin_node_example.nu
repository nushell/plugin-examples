use std/testing *
use std/assert

@test
def test [] {
    let expected = (0..9 | generate {|i| {out: {one: 0, two: ($i * 1), three: ($i * 2)}, next: ($i + 1)}} 0)
    assert equal (nu-python 1 a) $expected
    assert length (nu-python 1 a) 10
}
