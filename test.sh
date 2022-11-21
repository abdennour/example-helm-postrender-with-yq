#!/bin/bash
chmod +x ./postrender
helm template --generate-name ./my-chart \
  --post-renderer ./postrender --debug