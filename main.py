import click
import logging
from pathlib import Path

from astropy.table import Table

from proc.pipeline import load_and_preproc


@click.command()
@click.option("-f", help="Input fits file", required=True)
@click.option("-o", help="Output fits file", required=True)
def main(f, o):
    
    # Initialize logger
    logging.basicConfig(
        format="%(asctime)s %(levelname)s %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        filename="logfile.txt",
        level=logging.DEBUG,
    )
    logging.info("--Program Started--")
    logging.info(f"Input file: {f}")
    logging.info(f"Output file: {o}")
    
    
    input_file, output_file = Path(f), Path(o)

    # Check if exists, if not raise error
    if not input_file.exists():
        logging.error("Input file does not exist")
        raise FileNotFoundError("Input file does not exist")
    
    # Check output_file not exists
    if output_file.exists():
        logging.error("Output file already exists")
        raise FileExistsError("Output file already exists")
    
    # Read file and process
    try:
        logging.info("Processing data started")
        df = load_and_preproc(input_file, sample_size=None)
    except Exception as e:
        logging.error("Error processing data")
        logging.error(e)
        raise e
    logging.info("Data processed successfully")
    
    # Write processed file
    try:
        logging.info(f"Saving processed data to {o}")
        Table.from_pandas(df).write(output_file, format="fits", overwrite=True)
    except Exception as e:
        logging.error("Error saving processed data")
        logging.error(e)
        raise e
    
    logging.info(f"Saved processed data to {o}")
    
    

if __name__ == '__main__':
    main()