# Running Crusader from the command line

## Server

To host a Crusader server, run this on the _server_ machine:

```sh
crusader serve
```

## Client

To start a test, run this on the _client machine_.
See the [command-line options](#options-for-the-test-command) below for details.

```sh
crusader test <server-ip>
```

## Remote

To host a web server that provides remote control of a Crusader client,
run the command below, then connect to
`http://ip-of-the-crusader-device:35482`

```sh
crusader remote
```

## Plot

Crusader creates a `.png` file from a `.crr` file using `crusader plot path-to-crr-file`
The resulting `.png` is saved in the same directory as the input file.

## Export

Crusader exports raw data samples from a `.crr` file
into a `.json` file using `crusader export path-to-crr-file`
The resulting `.json` is saved in the same directory as the input file.

## Options for the `test` command

**Usage: `crusader test [OPTIONS] <SERVER-ADDRESS>`**

**Arguments:** `<SERVER-ADDRESS>` address of a Crusader server

**Options:**

* **`--download`**
          Run a download test
* **`--upload`**
          Run an upload test
* **`--bidirectional`**
          Run a test doing both download and upload
* **`--idle`**
          Run a test, only measuring latency without inducing traffic.
          The duration is specified by `grace_duration`
* **`--port <PORT>`**
          Specify the TCP and UDP port used by the server
          [default: 35481]
* **`--streams <STREAMS>`**
          The number of TCP connections used to generate
           traffic in a single direction
          [default: 8]
* **`--stream-stagger <SECONDS>`**
          The delay between the start of each stream
          [default: 0.0]
* **`--load-duration <SECONDS>`**
          The duration in which traffic is generated
          [default: 10.0]
* **`--grace-duration <SECONDS>`**
          The idle time between each test
          [default: 2.0]
* **`--latency-sample-interval <MILLISECONDS>`**
          [default: 5.0]
* **`--throughput-sample-interval <MILLISECONDS>`**
          [default: 60.0]
* **`--plot-transferred`**
          Plot transferred bytes
* **`--plot-split-throughput`**
          Plot upload and download separately and plot streams
* **`--plot-max-throughput <BPS>`**
          Set the axis for throughput to at least this value.
          SI units are supported so `100M` would specify 100 Mbps
* **`--plot-max-latency <MILLISECONDS>`**
          Set the axis for latency to at least this value
* **`--plot-width <PIXELS>`**
* **`--plot-height <PIXELS>`**
* **`--plot-title <PLOT_TITLE>`**
* **`--latency-peer-address <LATENCY_PEER_ADDRESS>`**
          Address of another Crusader server (the "peer") which
          concurrently measures the latency to the server and reports
          the values to the client
* **`--latency-peer`**
          Trigger the client to instruct a peer (another Crusader server)
          to begin measuring the latency to the main server
          and report the latency back
* **`--out-name <OUT_NAME>`**
          The filename prefix used for the raw data and plot filenames
* **`-h, --help`**
          Print help (see a summary with '-h')
