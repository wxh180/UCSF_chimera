#open /Users/whuang/Dropbox/Work/5LOX/FD_cryo/3D_variability/cryosparc_P11_J50_component_000/frame*.mrc vseries true
#vseries play #1 direction oscillate loop true
#vseries stop #1
color zone #1 near #2 distance 12 farColor gray update true

movie record
vseries play #0 direction oscillate loop false normalize true cacheFrames 30
wait 77
vseries stop #0
movie stop
movie encode /Users/wei/Downloads/cryosparc_P42_J150_component_000/t.mpg quality higher
