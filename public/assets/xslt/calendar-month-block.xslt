<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <!-- Define a template to match the root element -->
    <xsl:template match="calendar">
        <!-- Apply templates to each day -->
        <xsl:apply-templates select="day"/>
    </xsl:template>
    
    <!-- Define a template to match each day element -->
    <xsl:template match="day">
        <!-- Extract day, show, and today values -->
        <xsl:variable name="day" select="day"/>
        <!-- <xsl:variable name="show" select="show"/> -->
        <xsl:variable name="today" select="today"/>
        
        <!-- Create a div with class 'month-view-card' regardless of the content -->
        <div class="month-view-card">
            <xsl:attribute name="style">
                <xsl:choose>
                    <xsl:when test="show='false'">
                        <xsl:text>opacity: .6; cursor: default;</xsl:text>
                    </xsl:when>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="not(lesson)">
                        <xsl:text>cursor: default;</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <xsl:attribute name="onclick">
                <xsl:choose>
                    <xsl:when test="show='true'">
                        <xsl:text>createCalendarPopup(event);</xsl:text>
                    </xsl:when>
                </xsl:choose>
            </xsl:attribute>
            <!-- Check if the show parameter is true -->
            <!-- Create a div with class 'month-view-day' -->
            <div class="month-view-day">
                <!-- Set class attribute dynamically based on the today parameter -->
                <xsl:attribute name="class">
                    <xsl:text>month-view-day </xsl:text>
                    <xsl:if test="$today='true'">today</xsl:if>
                </xsl:attribute>
                <!-- Output the day value -->
                <div>
                    <xsl:value-of select="translate($day, translate($day, '1234567890', ''), '')"/>
                </div>
            </div>
            <!-- Create a div with class 'month-view-day-info' -->
            <div class="month-view-day-info">
                <!-- Additional day info goes here if needed -->
                <xsl:apply-templates select="lesson"/>
            </div>
        </div>
    </xsl:template>
    
    <!-- Template for lessons -->
    <xsl:template match="lesson">
        <xsl:variable name="begin" select="begin"/>
        
        <div class="day-event">
            <div class="day-event-type">
                <xsl:attribute name="style">
                    <xsl:choose>
                        <xsl:when test="exam='true'">
                            <xsl:text> background-color: var(--exam-event);</xsl:text>
                        </xsl:when>
                        <xsl:when test="holiday='true'">
                            <xsl:text> background-color: var(--holiday-event);</xsl:text>
                        </xsl:when>
                        <xsl:when test="lecture='true'">
                            <xsl:text> background-color: var(--lecture-event);</xsl:text>
                        </xsl:when>
                        <xsl:when test="other_event='true'">
                            <xsl:text> background-color: var(--other-event);</xsl:text>
                        </xsl:when>
                        <xsl:when test="voluntary='true'">
                            <xsl:text> background-color: var(--volunt-event);</xsl:text>
                        </xsl:when>
                    </xsl:choose>
                </xsl:attribute>
            </div>
            <div class="day-event-data">
                <div class="day-event-name">
                    <xsl:value-of select="name"/>
                </div>
                <xsl:choose>
                    <xsl:when test="holiday='false'">
                        <div class="day-event-begin">
                            <xsl:value-of select="substring($begin, 1, 2)"/>:<xsl:value-of select="substring($begin, 4)"/>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="day-event-begin">Ganztägig</div>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
