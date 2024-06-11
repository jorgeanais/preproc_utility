# VIRAC2 x VVVX
stilts tmatch2 \
       in1=virac2_lowbulge_like_pm+par.fits \
       in2=vvvx_x_gaia_lowbulge_like_pm+par.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/virac2_x_vvvx_pm+par.fits \
       ofmt=fits    
       
stilts tmatch2 \
       in1=40_likelihood/virac2_lowbulge_like_pm_only.fits \
       in2=40_likelihood/vvvx_x_gaia_lowbulge_like_pm_only.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/virac2_x_vvvx_pmonly.fits \
       ofmt=fits    

# VVV x VVVX
stilts tmatch2 \
       in1=40_likelihood/vvv_gaia_lowbulge_like_pm+par.fits \
       in2=40_likelihood/vvvx_x_gaia_lowbulge_like_pm+par.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/vvv_x_vvvx_pm+par.fits \
       ofmt=fits

stilts tmatch2 \
       in1=40_likelihood/vvv_gaia_lowbulge_like_pm_only.fits \
       in2=40_likelihood/vvvx_x_gaia_lowbulge_like_pm_only.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/vvv_x_vvvx_pmonly.fits \
       ofmt=fits


# Unir tablas resultantes
python script_merge.py \
    -i /home/jorge/data/sgr/base_sample/lowbulge/50_outerjoin/virac2_x_vvvx_pm+par.fits \
    -o /home/jorge/data/sgr/base_sample/lowbulge/60_merged/virac2_x_vvvx_pm+par_merged.fits

python script_merge.py \
    -i /home/jorge/data/sgr/base_sample/lowbulge/50_outerjoin/virac2_x_vvvx_pmonly.fits \
    -o /home/jorge/data/sgr/base_sample/lowbulge/60_merged/virac2_x_vvvx_pmonly_merged.fits

python script_merge.py \
    -i /home/jorge/data/sgr/base_sample/lowbulge/50_outerjoin/vvv_x_vvvx_pm+par.fits \
    -o /home/jorge/data/sgr/base_sample/lowbulge/60_merged/vvv_x_vvvx_pm+par_merged.fits

python script_merge.py \
    -i /home/jorge/data/sgr/base_sample/lowbulge/50_outerjoin/vvv_x_vvvx_pmonly.fits \
    -o /home/jorge/data/sgr/base_sample/lowbulge/60_merged/vvv_x_vvvx_pmonly_merged.fits