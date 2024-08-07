<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <table class="calendar-popup-table">
            <thead>
                <tr>
                    <th class="calendar-popup-table-head-time">Zeit</th>
                    <th>Vorlesung</th>
                    <th>Person</th>
                    <th>Raum</th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="//lesson"/>
            </tbody>
        </table>
    </xsl:template>
    
    <xsl:template match="lesson">
        <tr>
            <xsl:attribute name="style">
                <xsl:choose>
                    <xsl:when test="exam='true'">
                        <xsl:text> background-color: var(--exam-event);</xsl:text>
                        <xsl:text> color: var(--exam-text-color-event);</xsl:text>
                    </xsl:when>
                    <xsl:when test="holiday='true'">
                        <xsl:text> background-color: var(--holiday-event);</xsl:text>
                        <xsl:text> color: var(--holiday-text-color-event);</xsl:text>
                    </xsl:when>
                    <xsl:when test="lecture='true'">
                        <xsl:text> background-color: var(--lecture-event);</xsl:text>
                        <xsl:text> color: var(--lecture-text-color-event);</xsl:text>
                    </xsl:when>
                    <xsl:when test="other_event='true'">
                        <xsl:text> background-color: var(--other-event);</xsl:text>
                        <xsl:text> color: var(--other-text-color-event);</xsl:text>
                    </xsl:when>
                    <xsl:when test="voluntary='true'">
                        <xsl:text> background-color: var(--volunt-event);</xsl:text>
                        <xsl:text> color: var(--volunt-text-color-event);</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <td>
                <xsl:value-of select="substring(begin, 1, 2)"/>:<xsl:value-of select="substring(begin, 4)"/> - 
                <xsl:value-of select="substring(end, 1, 2)"/>:<xsl:value-of select="substring(end, 4)"/>
            </td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="person"/></td>
            <td><xsl:value-of select="room"/></td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>