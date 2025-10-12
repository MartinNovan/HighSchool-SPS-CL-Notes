import pytest
import subprocess

def test_kalkulacka():
    result = subprocess.run(["kalkulacka.exe", "5", "3"], stdout=subprocess.PIPE)
    assert int(result.stdout) == 2