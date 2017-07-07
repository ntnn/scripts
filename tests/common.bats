#!/usr/bin/env bats

@test "found key" {
    . common
    run arg key1 key1=val1
    [[ $? -eq 0 ]]
    [[ "$output" = val1 ]]
}

@test "non-zero rc on non-existing key" {
    . common
    run arg nkey key1=val1
    [[ $status -ne 0 ]]
    [[ "$output" = '' ]]
}
