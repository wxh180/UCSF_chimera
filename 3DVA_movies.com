movie record
vseries play #0 direction oscillate loop false normalize true cacheFrames 30
wait 77
vseries stop #0
movie stop
movie encode /Users/wei/Downloads/cryosparc_P42_J150_component_000/t.mpg quality higher
