<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/BasicFragment.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/res/layout/fragment.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragment_layout}.xml" />

<#if generateDelegateAndViewModel>
    <instantiate from="root/src/app_package/BasicFragmentViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.kt" />

    <instantiate from="root/src/app_package/BasicFragmentViewDelegate.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewDelegateClass}.kt" />
</#if>

<#if generateKodeinModule>
    <instantiate from="root/src/app_package/BasicFragmentKodeinModule.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}KodeinModule.kt" />
</#if>
<#if generateNavigator>
    <instantiate from="root/src/app_package/BasicFragmentNavigator.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${navigatorClass}.kt" />
</#if>
<#if generateDataSource>
    <instantiate from="root/src/app_package/BasicDataSource.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}DataSource.kt" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
