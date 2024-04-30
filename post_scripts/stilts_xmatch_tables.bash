# VIRAC2 x VVVX
stilts tmatch2 \
       in1=virac2_lowbulge_proc_likelihood_pm+parallax.fits \
       in2=vvvx_x_gaia_lowbulge_proc_likelihood_pm+parallax.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=virac2_x_vvvx_pm+parallax.fits \
       ofmt=fits    
       
stilts tmatch2 \
       in1=virac2_lowbulge_proc_likelihood_pmonly.fits \
       in2=vvvx_x_gaia_lowbulge_proc_likelihood_pmonly.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=virac2_x_vvvx_pmonly.fits \
       ofmt=fits    

# VVV x VVVX
stilts tmatch2 \
       in1=40_likelihood/vvv_gaia_lowbulge_likelihood_pmobly.fits \
       in2=40_likelihood/vvvx_x_gaia_lowbulge_proc_likelihood_pmonly.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/vvv_x_vvvx_pmonly.fits \
       ofmt=fits

stilts tmatch2 \
       in1=40_likelihood/vvv_gaia_lowbulge_proc_likelihood_pm+parallax.fits \
       in2=40_likelihood/vvvx_x_gaia_lowbulge_proc_likelihood_pm+parallax.fits \
       matcher=sky \
       params=0.4 \
       join=1or2 \
       values1='ra dec' \
       values2='ra dec' \
       out=50_outerjoin/vvv_x_vvvx_pm+parallax.fits \
       ofmt=fits


# Unir tablas resultantes
python script_merge.py \
    -i /home/jorge/zorro/base_sample/lowbulge/50_outerjoin/vvv_x_vvvx_pmonly.fits \
    -o /home/jorge/zorro/base_sample/lowbulge/60_merged/vvv_x_vvvx_pmonly_merged.fits

python script_merge.py \
    -i /home/jorge/zorro/base_sample/lowbulge/50_outerjoin/vvv_x_vvvx_pm+parallax.fits \
    -o /home/jorge/zorro/base_sample/lowbulge/60_merged/vvv_x_vvvx_pm+parallax_merged.fits