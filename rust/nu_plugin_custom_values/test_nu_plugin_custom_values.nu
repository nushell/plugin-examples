use std/testing *
use std/assert

@test
def "test custom-value drop-check" [] {
    # TODO: actually test the dropping behavior here somehow
    assert equal (custom-value drop-check msg | describe) DropCheckValue
}

@test
def "test custom-value generate" [] {
    let custom_value = custom-value generate
    let custom_value2 = custom-value generate2
    assert equal ($custom_value | describe) CoolCustomValue
    assert equal ($custom_value2 | describe) SecondCustomValue
    assert not equal ($custom_value | to text) ($custom_value2 | to text)
}

@test
def "test custom-value handle" [] {
    let handle = 'anything' | custom-value handle make
    assert equal ($handle | custom-value handle get) 'anything'

    let new_handle = $handle | custom-value handle update {$in + " lol"}
    assert equal ($new_handle | custom-value handle get) 'anything lol'
}

@test
def "test custom-value update" [] {
    let value = custom-value generate
    assert not equal ($value | custom-value update | to text) ($value | to text)
    assert not equal (custom-value update-arg $value | to text) ($value | to text)
}
