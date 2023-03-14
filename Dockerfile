# We always use the latest stable Fedora image, never rawhide
FROM fedora:latest

# Update package sources
RUN dnf update

# Install boot and kernel stuff
RUN dnf install bootc systemd kernel

# Install LXQT
RUN dnf install group install "LXQt Desktop"