# Crusader Network Tester

[![GitHub Release](https://img.shields.io/github/v/release/Zoxc/crusader)](https://github.com/Zoxc/crusader/releases)
[![Docker Hub](https://img.shields.io/badge/container-dockerhub-blue)](https://hub.docker.com/r/zoxc/crusader)
[![MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/Zoxc/crusader/blob/master/LICENSE-MIT)
[![Apache](https://img.shields.io/badge/license-Apache-blue.svg)](https://github.com/Zoxc/crusader/blob/master/LICENSE-APACHE)

![Crusader Results Screenshot](./media/Crusader-Result.png)

The **Crusader Network Tester** measures network throughput, latency and packet loss
in the presence of upload and download traffic.
It also incorporates a continuous latency tester for
monitoring background responsiveness.

Crusader makes throughput measurements using TCP on port 35481
and latency tests using UDP port 35481.
The remote web server option uses TCP port 35482.
Local server discovery uses UDP port 35483.

**Pre-built binaries** for Windows, Mac, Linux,
and Android are available on the
[Releases](https://github.com/Zoxc/crusader/releases) page.
The GUI is not prebuilt for Linux and must be built from source.

**Documentation** See the [Documentation](#documentation)
section below.

**Status:** The latest Crusader release version is shown above.
  The [pre-built binaries](https://github.com/Zoxc/crusader/releases)
  always provide the latest version.
  See the [CHANGELOG.md](./CHANGELOG.md) file for details.

## Crusader GUI

A test run requires two separate computers,
both running Crusader:
a **server** that listens for connections, and
a **client** that initiates the test.

The Crusader GUI incorporates both the server and
the client and allows you to interact with results.
To use it, download the proper binary from the
[Releases](https://github.com/Zoxc/crusader/releases) page.

When you open the `crusader-gui` you see this window.
Enter the address of another computer that's
running the Crusader server, then click **Start test**.
When the test is complete, the **Result** tab shows a
chart like the second image below.

An easy way to use Crusader is to download
the Crusader GUI onto two computers, then
start the server on one computer, and the client on the other.

![Crusader Client Screenshot](./media/Crusader-Client.png)

The Crusader GUI has five tabs:

* **Client tab**
  Runs the Crusader client program.
  The options shown above are described in the
  [Command-line options](./docs/CLI.md) page.

* **Server tab**
  Runs the Crusader server, listening for connections from other clients

* **Remote tab**
  Starts a webserver (default port 35482).
  A browser that connects to that port can initiate
  a test to a Crusader server.
  
* **Monitor tab**
  Continually displays the latency to the selected
  Crusader server until stopped.

* **Result tab**
  Displays the result of the most recent client run

## The Result Tab

![Crusader Results Screenshot](./media/Crusader-Result.png)

A Crusader test creates three bursts of traffic.
By default, it generates ten seconds each of
download only, upload only, then bi-directional traffic.
Each burst is separated by several seconds of idle time.

The Crusader Result tab displays the results of the test with
three plots (see image above):

* The **Throughput** plot shows the bursts of traffic.
Green is download (from server to client),
blue is upload, and
the purple line is the instantaneous
sum of the download plus upload.

* The **Latency** plot shows the corresponding latency.
Green shows the  (uni-directional) time from the server to the client.
Blue is the (uni-directional) time from the client to the server.
Black shows the sum from the client to the server
and back (round-trip time).

* The **Packet Loss** plot has green and blue marks
that indicate times when packets were lost.

For more details, see the
[Understanding Crusader Results](./docs/RESULTS.md) page.

## Documentation

* [This README](./README.md)
* [Understanding Crusader Results](./docs/RESULTS.md)
* [Local Testing](./docs/LOCAL_TESTS.md)
* [Command-line Options](./docs/CLI.md)
* [Building Crusader from source](./docs/BUILDING.md)
* [Troubleshooting](./docs/TROUBLESHOOTING.md)
* [Docker container](https://hub.docker.com/r/zoxc/crusader)
  for the server is available on
  [dockerhub](https://hub.docker.com/r/zoxc/crusader).
