# Troubleshooting

* Crusader requires that TCP and UDP ports 35481 are open for its tests.
  Crusader also uses ports 35482 for the remote webserver
  and port 35483 for discovering other Crusader Servers.
  Check that your firewall is letting those ports through.

* On macOS, the first time you double-click
  the pre-built `crusader` or `crusader-gui` icon,
  the OS refuses to let it run.
  You must use **System Preferences -> Privacy & Security**
  to approve Crusader to run.

* The message
  `Warning: Load termination timed out. There may be residual untracked traffic in the background.`
  is not harmful.
  It may happen due to the TCP termination being lost
  or TCP incompatibilities between OSes.
  It's likely benign if you see throughput and latency drop
  to idle values after the tests in the graph.

* The up and down latency measurements rely on symmetric stable latency
  measurements to the server.
  These values may be wrong if those assumption don't hold on test startup.

* The up and down latency measurement may slowly get out of sync due to
  clock drift. Clocks are currently only synchronized on test startup.
