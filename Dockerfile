# We always use the latest stable Fedora image, never rawhide
FROM fedora:latest

WORKDIR /workdir

# Install bootc repo
COPY bootc-fedora.repo .
RUN dnf install 'dnf-command(config-manager)' --assumeyes
RUN dnf config-manager --add-repo /workdir/bootc-fedora.repo --assumeyes

# Update package sources
RUN dnf update

# Install boot and kernel stuff
RUN dnf install bootc systemd kernel --assumeyes

# Install LXQT
RUN dnf install group install "LXQt Desktop" --assumeyes
