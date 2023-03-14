# We always use the latest stable Fedora image, never rawhide
FROM fedora:latest

# Update package sources
RUN dnf update

# Install boot stuff
RUN dnf install bootc

# Install LXQT
RUN dnf install group install "LXQt Desktop"