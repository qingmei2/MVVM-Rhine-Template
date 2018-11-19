<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />
    <instantiate from="root/res/layout/activity.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${activity_layout}.xml" />

    <instantiate from="root/src/app_package/BasicActivity.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

<#if generateDelegateAndViewModel>
    <instantiate from="root/src/app_package/BasicActivityViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.kt" />

    <instantiate from="root/src/app_package/BasicActivityViewDelegate.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewDelegateClass}.kt" />
</#if>

<#if generateKodeinModule>
    <instantiate from="root/src/app_package/BasicActivityKodeinModule.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}KodeinModule.kt" />
</#if>
<#if generateNavigator>
    <instantiate from="root/src/app_package/BasicActivityNavigator.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${navigatorClass}.kt" />
</#if>
<#if generateDataSource>
    <instantiate from="root/src/app_package/BasicDataSource.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}DataSource.kt" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
