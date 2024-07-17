<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Output method -->
    <xsl:output method="xml" indent="yes" />
    
    <!-- Template match for each day element -->
    <xsl:template match="day">
        <div class="day-wrapper">
            <h2 class="day-name"><xsl:value-of select="day-name" /></h2>
            <div class="day">
                <xsl:for-each select="meals">
                    <div class="meals">
                        <xsl:for-each select="meal">
                            <div class="meal">
                                <p class="meal-name"><xsl:value-of select="name" /></p>
                                <xsl:if test="type!='undefined' or price!='undefined' or allergies!='undefined' or additions!='undefined'">
                                    <xsl:choose>
                                        <xsl:when test="allergies != 'Keine Allergene'">
                                            <p class="meal-allergies">Allergene: <xsl:value-of select="allergies" /></p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="meal-allergies"><xsl:value-of select="allergies" /></p>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:choose>
                                        <xsl:when test="additions != 'Keine Zusatzstoffe'">
                                            <p class="meal-additions">Zusatzstoffe: <xsl:value-of select="additions" /></p>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <p class="meal-additions"><xsl:value-of select="additions" /></p>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <p class="meal-type"><xsl:value-of select="type" /></p>
                                    <p class="meal-price"><xsl:value-of select="price" /></p>
                                </xsl:if>
                            </div>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </div>
        </div>
    </xsl:template>
    
</xsl:stylesheet>