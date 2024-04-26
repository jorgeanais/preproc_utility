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
