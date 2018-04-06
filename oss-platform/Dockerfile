######################################################################
# Copyright (c) 2017-2018 UNPARALLEL innovation Lda, and Castalia Solution
#
# This program and the accompanying materials are made
# available under the terms of the Eclipse Public License 2.0
# which is available at https://www.eclipse.org/legal/epl-2.0/
#
# SPDX-License-Identifier: EPL-2.0
######################################################################

#
# Notes:
#
# Running the OSSMETER platform requires a image with Java JDK installed. Moreover, Eclipse
# requires the glibc to run, which excludes alpine-based small images since they use musl,
# not 100% compatible with glibc.
#

FROM openjdk:8-jdk 
LABEL description="Image with the OSSMETER platform" 

# Get the binaries and uncompress them inthe container
#RUN wget http://ci3.castalia.camp/dl/ossmeter.tar.gz -O /ossmeter.tar.gz \
COPY scava.tar.gz /ossmeter.tar.gz
RUN tar xzf /ossmeter.tar.gz -C / \
	&& rm /ossmeter.tar.gz
WORKDIR /ossmeter/

# By default, starts the platform to run the master, a slave, and the web API
ENTRYPOINT exec ./eclipse -apiServer -master -slave -ossmeterConfig prop.properties
