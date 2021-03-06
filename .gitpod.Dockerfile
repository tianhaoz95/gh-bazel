FROM gitpod/workspace-full

RUN sudo apt update -y && sudo apt install -y build-essential

RUN sudo apt install -y curl gnupg && \
  curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg && \
  sudo mv bazel.gpg /etc/apt/trusted.gpg.d/ && \
  echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list && \
  sudo apt update -y && \
  sudo apt install -y bazel
