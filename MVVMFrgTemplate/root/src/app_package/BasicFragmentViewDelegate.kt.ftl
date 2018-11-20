package ${kotlinEscapedPackageName}

import com.qingmei2.rhine.base.viewdelegate.BaseViewDelegate

class ${viewDelegateClass}(
    val viewModel: ${viewModelClass}<#if generateNavigator>,
    val navigator: ${navigatorClass}</#if>
) : BaseViewDelegate()