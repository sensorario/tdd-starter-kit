<?php

class FakeClassTest extends PHPUnit\Framework\TestCase
{
    /** @test */
    public function fooBar()
    {
        $fake = new FakeClass();
        $this->assertEquals('bar', $fake->foo());
    }
}
