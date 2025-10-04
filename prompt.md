**single prompt** use to regenerate the `.bat` script with all features (cleanup, parameters, unzip, etc.):

---

**Prompt:**

> Create a Windows `.bat` script that runs `bundletool` to build an `.apks` file from an `.aab`.
> Requirements:
>
> * Take **keystore password** and **keystore alias** as command-line parameters.
> * Delete the existing `extracted_apks` folder and the old `.apks` file before building.
> * Run the `java -jar bundletool-all-1.18.1.jar build-apks` command with the following defaults:
>
>   * `--bundle=application.aab`
>   * `--output=expense_tracker_v00316.apks`
>   * `--ks=keystore.jks`
>   * `--ks-pass=pass:[password parameter]`
>   * `--ks-key-alias=[alias parameter]`
>   * `--mode=universal`
> * After building, automatically unzip the `.apks` file into a fresh `extracted_apks` folder.
> * Print clear messages at each step and `pause` at the end.
> * Show me the full final `.bat` script.
