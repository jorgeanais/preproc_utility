# preproc_utility

A program to standarize tabular data as required for sgrmemb

## How to use

```bash
python main.py -f vvvx_x_gaia_lowbulge.fits -o output.fits
```

## Pipeline Definition

The pipeline procedure is defined at `proc/pipeline.py`.

## Data Features

| Columna           | Descripción                | Unit   | Computed | Mandatory |
|-------------------|----------------------------|--------|----------|-----------|
| `ra`              | Right Ascention            | deg    | ✗        | yes       |
| `dec`             | Declination                | deg    | ✗        | yes       |
| `l`               | Galactic longitude         | deg    | ✗        | yes       |
| `b`               | Galactic latitude          | deg    | ✗        | yes       |
| `pmra`            | RA proper motion           | mas/yr | ✗        | yes       |
| `pmra_error`      | pmra error                 | mas/yr | ✗        | yes       |
| `pmdec`           | DEC proper motion          | mas/yr | ✗        | yes       |
| `pmdec_error`     | pmdec error                | mas/yr | ✗        | yes       |
| `parallax`        | Parallax                   | mas    | ✗        | no        |
| `parallax_error`  | Parallax error             | mas    | ✗        | no        |
| `mag_J`           | J-band magnitude           | mag    | ✗        | yes       |
| `er_J`            | Error J-band               | mag    | ✗        | yes       |
| `mag_H`           | H-band magnitude           | mag    | ✗        | no        |
| `er_H`            | Error H-band               | mag    | ✗        | no        |
| `mag_Ks`          | Ks-band magnitude          | mag    | ✗        | yes       |
| `phot_g_mean_mag` | Gaia g band                | mag    | ✗        | no        |
| `phot_bp_mean_mag`| Gaia b band                | mag    | ✗        | no        |
| `phot_rp_mean_mag` |Gaia r band                | mag    | ✗        | no        |
| `er_Ks`           | Error Ks-band              | mag    | ✗        | yes       |
| `SgrX`            | Sagittarius X              | mag    | ✓        | yes       |
| `SgrY`            | Sagittarius Y              | mag    | ✓        | yes       |
| `Sgr_lon`         | Sagittarius Longitude      | mag    | ✓        | yes       |
| `Sgr_lat`         | Sagittarius Latitude       | mag    | ✓        | yes       |
| `pmra_corr`       | Corrected pmra             | mag    | ✓        | no        |
| `pmdec_corr`      | Corrected pmdec            | mag    | ✓        | no        |
| `mag_J-mag_Ks`    | J - Ks color               | mag    | ✓        | yes       |
| `mag_H-mag_Ks`    | H - Ks color               | mag    | ✓        | no        |
| `l_wrap`          | Wrapped Galactic Longitude | deg    | ✓        | no        |
| `astro_prob`      | XDGMM initial probability  | _      | ✓        | yes       |

## Sequence of preprocessing

preproc_utility (this) -> gmm_params (pmprop) -> outerjoin(stilts)(this) -> script_merge (this) -> total_prob (pmprop)
