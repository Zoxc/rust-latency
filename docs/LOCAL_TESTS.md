# Local network testing with Crusader

**Background:**
The Crusader Network Tester measures network throughput
and latency in the presence of upload and download traffic
and produces plots of the traffic rates, latency and packet loss.

## Making local tests

To test the equipment between two points on your network,
Crusader requires two computers,
one acting as a server, the other as a client.

The Crusader program can act as both client and server.
Install the latest pre-built binary of
[Crusader](https://github.com/Zoxc/crusader/releases)
on two separate computers. Then:

1. Connect one of those computers to your router's LAN port using an
  Ethernet cable.
  Start the Crusader program on it, then click the **Server** tab. See the
  [screen shot](../media/Crusader-Server.png).
  Click **Start server** and look for the
  address(es) where the Crusader Server is listening.
  (Note: The Crusader binary can also run on a small
  computer such as a Raspberry Pi.
  A Pi4 acting as a server can easily support 1Gbps speeds.)
2. Connect the other computer either by Ethernet, Wi-fi,
  or some other adapter.
  Run the Crusader program and click the Client tab. See the
  [screen shot](../media/Crusader-Client.png).
  Enter the address of a Crusader Server into the GUI,
  and click **Start test**
3. When the test completes, you'll see charts of three bursts of traffic:
  Download, Upload, and Bidirectional,
  along with the latency during that activity.
  See the
  [Crusader README](../README.md) and
  [Understanding Crusader Results](./RESULTS.md)
  for details.

**Note:** The Crusader program has both a GUI and a command-line binary.
Both act as a client or a server.
These instructions tell how to run the client on a laptop.
You may find it convenient to run the server on a remote computer.
Get both binaries from the
[Releases page](https://github.com/Zoxc/crusader/releases).

## What can we learn?

Your local router, Wi-fi, and other network equipment
all affect your total performance.
Even with very high speed internet service,
if the router is max'ed out it can hold back your throughput.
And you're stuck with whatever latency the router and
other local equipment create - it's added to any latency from your ISP network.
In particular:

* Ethernet-to-Ethernet connections tend to be good:
  high throughput with low latency.
  But you should always check your network.
  On a 1Gbps network, typical results are above 950 mbps,
  and less than a dozen milliseconds of latency.
* Wi-fi has a reputation for "being slow".
  This often is a result of the Wi-fi drivers injecting
  hundreds of milliseconds of latency.
  In addition, wireless connections will always have lower
  throughput than wired connections.
* Many powerline adapters (that provide an Ethernet connection
  between two AC outlets) may have high specifications,
  but in practice are known to give limited throughput
  and have high latency.

Running a Crusader test between computers on the local network measures
the performance of that portion of the network.

## Why is this important?

These test results, in themselves, are not important.
If you are satisfied with you network's performance,
then these numerical results don't matter.

But if you are experiencing problems,
these tests help divide the troubleshooting problem in two.

* If the local network is running fine, performance problems must be elsewhere.
* But if the local performance is not what you expected,
  that could explain the problem
