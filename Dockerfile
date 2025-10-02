# Dockerfile for Hugo Extended + Node.js + Go on Debian base
FROM node:20-bookworm-slim

# Install Go
ARG GO_VERSION=1.24.0
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    wget \
    ca-certificates \
    git \
    && wget -q https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz \
    && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz \
    && rm go${GO_VERSION}.linux-amd64.tar.gz

# Set Go environment variables
ENV PATH="/usr/local/go/bin:${PATH}"
ENV GOPATH="/go"
ENV PATH="${GOPATH}/bin:${PATH}"

# Install Hugo Extended
ARG HUGO_VERSION=0.150.1
RUN wget -q https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz \
    && tar -xzf hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz -C /usr/local/bin \
    && rm hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz \
    && chmod +x /usr/local/bin/hugo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Verify installations
RUN hugo version && node --version && npm --version && go version

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy Hugo project files
COPY . .

# Expose Hugo dev server port
EXPOSE 1313

# Start Hugo server
CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--buildDrafts", "--buildFuture", "--disableFastRender"]
