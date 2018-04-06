# !/bin/bash

SCAVA="$HOME/repositories/scava"
PRODUCT="$SCAVA/metric-platform/releng/org.eclipse.scava.product/target/products/SCAVA product/linux/gtk/x86_64"

# Build product
MAVEN_OPTS=-Xmx20148m mvn -f "$SCAVA/metric-platform/pom.xml" package

# Package product
cp -r "$PRODUCT/configuration" "$PRODUCT/eclipse" "$PRODUCT/eclipse.ini" "$PRODUCT/features" "$PRODUCT/plugins" .
tar czf scava.tar.gz configuration eclipse eclipse.ini features plugins prop.properties

# Cleanup
rm -rf configuration eclipse eclipse.ini features plugins

