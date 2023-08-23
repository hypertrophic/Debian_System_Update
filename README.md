# System Update Script

## Introduction

This script is designed to update your Debian-based system manually or automatically (with `cron`), allowing you to have control over when and how your system is updated.

## Usage

To run the script, follow these steps:

1. Open the terminal.

2. Navigate to the directory where the script is located.

3. Make the script executable by running the following command:
   `chmod +x Script.sh`

4. Run the script: `sudo ./Updates.sh` or just click on it.

## Why Manual Updates?

The decision to perform manual updates is based on a few key considerations:

- __Flexibility and Control:__ Manual updates give you control over when updates are performed. This can be crucial when you need your system to perform optimally during specific tasks or activities.

- __Performance:__ Automatic updates can sometimes impact system performance. Manual updates ensure that updates won't interfere with critical tasks or slow down your hardware.

- __Internet Connection:__ Automatic updates can consume bandwidth. By updating manually, you avoid potential disruptions to your internet usage.

## Additional Options

While the basic script provided focuses on updating the system, there are several options you can customize to suit your needs:

- __Cron Schedule:__ If you want to automate the updates, you can set up a cron job to run the script at a specific time. Edit your crontab using the command crontab -e and add the following line to run the script every day at 9:00 PM:
   `0 21 * * * /path/to/your/script.sh`

- __Error Handling:__ The script includes error handling to stop execution if an error occurs. This ensures that issues are addressed immediately.

- __Customization:__ You can modify the script to include additional commands or features to suit your specific needs like a report option that will be sent to your email.

## Contribution
I welcome contributions to the script! If you have ideas for improvements or additional features, feel free to submit a pull request.  
