[![](https://github.com/scenerygraphics/jvrpn/actions/workflows/build-main.yml/badge.svg)](https://github.com/scenerygraphics/jvrpn/actions/workflows/build-main.yml)

# Mavenized VRPN

This is a distribution of VRPN's Java part that can be used in a  Maven project on Windows, OS X and Linux.

## Usage in a Maven project

Add the following to your `pom.xml`:

```xml
<dependencies>
  <dependency>
    <groupId>graphics.scenery</groupId>
    <artifactId>jvrpn</artifactId>
    <version>1.2.0</version>
  </dependency>

  <dependency>
    <groupId>graphics.scenery</groupId>
    <artifactId>jvrpn</artifactId>
    <version>${jvrpn.version}</version>
    <classifier>${jvrpn.natives}</classifier>
    <scope>runtime</scope>
  </dependency>
</dependencies>
...

<profile>
    <id>jvrpn-natives-linux</id>
    <activation>
        <os>
            <family>unix</family>
        </os>
    </activation>
    <properties>
        <jvrpn.natives>natives-linux</jvrpn.natives>
    </properties>
</profile>
<profile>
    <id>jvrpn-natives-macos</id>
    <activation>
        <os>
            <family>mac</family>
        </os>
    </activation>
    <properties>
        <jvrpn.natives>natives-macos</jvrpn.natives>
    </properties>
</profile>
<profile>
    <id>jvrpn-natives-windows</id>
    <activation>
        <os>
            <family>windows</family>
        </os>
    </activation>
    <properties>
        <jvrpn.natives>natives-windows</jvrpn.natives>
    </properties>
</profile>
```
