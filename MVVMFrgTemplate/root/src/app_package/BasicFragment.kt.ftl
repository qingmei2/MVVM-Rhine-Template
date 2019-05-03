package ${kotlinEscapedPackageName}

import android.os.Bundle
import android.view.View
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
<#if applicationPackage??>
import com.qingmei2.rhine.base.view.fragment.BaseFragment
import ${applicationPackage}.R
</#if>

class ${className} : BaseFragment() {

    override val kodein: Kodein = Kodein.lazy {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    private val mViewModel: ${viewModelClass} by instance()

    override val layoutId: Int = R.layout.${fragment_layout}

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binds()
    }

    private fun binds() {
        // TODO implement detail
    }

    companion object {

        fun instance(): ${className} = ${className}()
    }
}