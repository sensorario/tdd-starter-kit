<?php

class FakeClassTest extends PHPUnit\Framework\TestCase
{
    /** @test */
    public function fooBar()
    {
        $fake = new FakeClass();
        $this->assertEquals('bazz', $fake->fizz());
        $this->assertEquals('bar', $fake->foo());
    }
}
