#!/usr/bin/env python3
import time
import logging
import sys

logger = logging.getLogger("log-app")
logger.setLevel(logging.DEBUG)

handler = logging.StreamHandler(sys.stdout)
handler.setFormatter(logging.Formatter("MESSAGE: %(message)s"))
logger.addHandler(handler)

while True:
    logger.debug("Debug Message")
    logger.info("Info message: Standard mail")
    logger.critical("Emergency message: Crytical error")
    time.sleep(5)
# Test edit
