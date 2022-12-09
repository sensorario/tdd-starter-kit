<?php

class RoboFile extends \Robo\Tasks
{
    public function watchCode()
    {
        $folders = ['src', 'tests'];

        $fn = function () {
            $this->taskExec('./bin/phpunit')
                ->run();
        };

        $this->taskWatch()
            ->monitor($folders, $fn)
            ->run();
    }
}
