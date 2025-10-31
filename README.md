Prepare & Secure the Remote Machine (run on friend’s laptop)

Install SSH and (optionally) VNC: sudo apt update && sudo apt install -y openssh-server tigervnc-standalone-server

Create a non-root user (if not present) and enable SSH service: sudo useradd -m frienduser || true && sudo systemctl enable --now ssh

Add your public key to /home/frienduser/.ssh/authorized_keys and set correct permissions:
mkdir -p /home/frienduser/.ssh && echo "<your-pubkey>" >> /home/frienduser/.ssh/authorized_keys && chmod 700 /home/frienduser/.ssh && chmod 600 /home/frienduser/.ssh/authorized_keys && chown -R frienduser:frienduser /home/frienduser/.ssh

Connect & Test X11 Forwarding (single GUI app)

From your laptop, test key-based SSH + X11:
ssh -p 22 -X frienduser@FRIEND_IP
then run: xeyes or gedit &

Success criteria: GUI app opens on your machine and is responsive.

Set Up VNC over SSH (full desktop)

On friend’s laptop start VNC server: vncserver :1 (note port 5901).

On your laptop create tunnel and connect:

Tunnel: ssh -L 5901:localhost:5901 -p 22 frienduser@FRIEND_IP -N &

Open VNC viewer to localhost:5901.

Success criteria: Full remote desktop visible; clipboard/keyboard usable.

Deliverables: screenshots of (a) successful ssh -X running a GUI app, (b) VNC desktop session, and (c) the authorized_keys file (redact keys).
