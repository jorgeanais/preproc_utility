import numpy as np
from astropy.table import Table


t = Table.read("virac2_x_vvvx_pm+parallax.fits", format="fits")
t.colnames

COLS_OUT = [
    'ra',
    'dec',
    'l',
    'b',
    'pmra',
    'pmra_error',
    'pmdec',
    'pmdec_error',
    'parallax',
    'parallax_error',
    'mag_J',
    'er_J',
    'mag_H',
    'er_H',
    'mag_Ks',
    'er_Ks',
    'l_wrap',
    'SgrX',
    'SgrY',
    'Sgr_lon',
    'Sgr_lat',
    'pmra_corr',
    'pmdec_corr',
    'mag_J-mag_Ks',
    'mag_H-mag_Ks',
    'prob_xi_memb',
    'prob_xi_field'
]
 
COLS_1 = [
    'ra_1',
    'dec_1',
    'l_1',
    'b_1',
    'pmra_1',
    'pmra_error_1',
    'pmdec_1',
    'pmdec_error_1',
    'parallax_1',
    'parallax_error_1',
    'mag_J_1',
    'er_J_1',
    'mag_H_1',
    'er_H_1',
    'mag_Ks_1',
    'er_Ks_1',
    'l_wrap_1',
    'SgrX_1',
    'SgrY_1',
    'Sgr_lon_1',
    'Sgr_lat_1',
    'pmra_corr_1',
    'pmdec_corr_1',
    'mag_J-mag_Ks_1',
    'mag_H-mag_Ks_1',
    'prob_xi_memb_1',
    'prob_xi_field_1'
 ]

COLS_2 = [
    'ra_2',
    'dec_2',
    'l_2',
    'b_2',
    'pmra_2',
    'pmra_error_2',
    'pmdec_2',
    'pmdec_error_2',
    'parallax_2',
    'parallax_error_2',
    'mag_J_2',
    'er_J_2',
    'mag_H_2',
    'er_H_2',
    'mag_Ks_2',
    'er_Ks_2',
    'l_wrap_2',
    'SgrX_2',
    'SgrY_2',
    'Sgr_lon_2',
    'Sgr_lat_2',
    'pmra_corr_2',
    'pmdec_corr_2',
    'mag_J-mag_Ks_2',
    'mag_H-mag_Ks_2',
    'prob_xi_memb_2',
    'prob_xi_field_2'
]


for c1, c2, co in zip(COLS_1, COLS_2, COLS_OUT):
    print("[", c1, c2, "] ->", co)
    t[co] = np.where(np.isnan(t[c1]), t[c2], t[c1])
    t.remove_columns([c1, c2])
    
t.write("virac2_x_vvvx_pm+parallax_merged.fits")
    
    


