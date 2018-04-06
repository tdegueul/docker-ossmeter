# !/bin/bash

SCAVA="$HOME/repositories/scava"
PRODUCT="$SCAVA/metric-platform/releng/org.eclipse.scava.product/target/products/SCAVA product/linux/gtk/x86_64"

# Build product
MAVEN_OPTS=-Xmx20148m mvn -f "$SCAVA/metric-platform/pom.xml" package

# Package product
cp -r "$PRODUCT/configuration" "$PRODUCT/eclipse" "$PRODUCT/eclipse.ini" "$PRODUCT/features" "$PRODUCT/plugins" ossmeter
tar czf scava.tar.gz ossmeter

# Cleanup
rm -rf ossmeter/configuration ossmeter/eclipse ossmeter/eclipse.ini ossmeter/features ossmeter/plugins

