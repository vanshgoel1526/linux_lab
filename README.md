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
🎯 12. Alternatives to nice / renice
1. chrt (Real-Time Scheduling)
Set real-time scheduling policies (FIFO or Round Robin).

sudo chrt -f 50 sleep 1000
chrt -p <pid>
2. ionice (I/O Priority Control)
ionice -c 2 -n 7 tar -czf backup.tar.gz /home
3. taskset (CPU Affinity)
taskset -c 1 firefox
4. Control Groups (cgroups)
sudo cgcreate -g cpu,memory:/lowprio
echo 20000 | sudo tee /sys/fs/cgroup/cpu/lowprio/cpu.cfs_quota_us
echo 200M   | sudo tee /sys/fs/cgroup/memory/lowprio/memory.limit_in_bytes
echo 1234 | sudo tee /sys/fs/cgroup/cpu/lowprio/cgroup.procs
5. systemd-run
systemd-run --scope -p CPUWeight=200 stress --cpu 4
6. schedtool
sudo schedtool -R -p 10 <pid>
✅ Summary Table
Tool	Focus	Alternative to
chrt	Real-time scheduling policies	nice
ionice	I/O priority control	(complementary)
taskset	CPU affinity control	(complementary)
cgroups	Fine-grained resource management	nice (more powerful)
systemd-run	systemd + cgroups resource mgmt	nice
schedtool	Custom scheduling policies	nice
