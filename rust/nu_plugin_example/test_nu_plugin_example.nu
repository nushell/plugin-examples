use std/testing *
use std/assert

@test
def "test example" [] {
    assert str contains (example) "Example commands for Nushell plugins"
}

@test
def "test example call-decl" [] {
    let expected = version | columns | length
    assert length (example call-decl version | columns) $expected
}

@test
def "test example collect-bytes" [] {
    let expected = "ab"
    assert equal ([a, b] | example collect-bytes) $expected
}

@test
def "test example config" [] {
    let config = {a: 1, b: "b"}
    $env.config.plugins.example = $config
    assert equal (example config) $config
}

@test
@ignore
def "test example ctrlc" [] {
    # TODO: test this
}

@test
@ignore
def "test example disable-gc" [] {
    # TODO: test this
}

@test
def "test example echo" [] {
    let expected = seq 1 5 | collect
    assert equal (seq 1 5 | example echo) $expected
}

@test
def "test example env" [] {
    let value = "🐘"
    $env.ELLY = $value
    assert equal (example env | get ELLY) $value
}

@test
@ignore
def "test example for-each" [] {
    # TODO: test this
}

@test
def "test example generate" [] {
    let expected = [0, 2, 4, 6, 8, 10]
    let closure = {|i| if $i <= 10 {{out: $i, next: ($i + 2)}}}
    let actual = example generate 0 $closure
    assert equal $actual $expected
}

@test
def "test example one" [] {
    # TODO: test the actual behavior
    assert equal (example one 1 a) null
}

@test
def "test example seq" [] {
    assert equal (example seq 1 5) (seq 1 5)
}

@test
def "test example sum" [] {
    let input = [1, 2, 3]
    let expected = $input | math sum
    let actual = $input | example sum
    assert equal $expected $actual
}

@test
def "test example three" [] {
    assert error {|| example three 1 a}
}

@test
def "test example two" [] {
    let expected = (0..9 | generate {|i| {out: {one: $i, two: ($i * 2), three: ($i * 3)}, next: ($i + 1)}} 0)
    assert equal (example two 1 a) $expected
}

@test
def "test example view span" [] {
    let expected = "'hello ' ++ 'world'"
    let actual = ('hello ' ++ 'world') | example view span
    assert equal $expected $actual
}
