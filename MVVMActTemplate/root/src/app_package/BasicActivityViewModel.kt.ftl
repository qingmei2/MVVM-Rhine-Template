package ${kotlinEscapedPackageName}

import android.arch.lifecycle.LifecycleOwner
import com.qingmei2.rhine.base.viewmodel.BaseViewModel
import com.qingmei2.rhine.ext.viewmodel.addLifecycle

@SuppressWarnings("checkResult")
class ${viewModelClass}(
        private val repo: ${dataSourceRepositoryName}
) : BaseViewModel() {

	companion object {

        fun instance(lifecycleOwner: LifecycleOwner,
                     repo: ${dataSourceRepositoryName}) =
                ${viewModelClass}(repo).apply {
                    addLifecycle(lifecycleOwner)
                }
    }
}