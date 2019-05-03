package ${kotlinEscapedPackageName}

import android.os.Bundle
import androidx.fragment.app.FragmentActivity
import android.content.Intent
import org.kodein.di.Kodein
import org.kodein.di.generic.instance
import org.kodein.di.android.retainedKodein
<#if applicationPackage??>
import ${applicationPackage}.R
import com.qingmei2.rhine.base.view.activity.BaseActivity
</#if>

class ${className} : BaseActivity() {

    override val kodein: Kodein by retainedKodein {
        extend(parentKodein)
        import(${kodeinModuleName})
    }

    private val mViewModel: ${viewModelClass} by instance()

    override val layoutId: Int = R.layout.${activity_layout}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binds()
    }

    private fun binds() {
        // TODO implement detail
    }

    companion object {

        fun launch(activity: FragmentActivity) {
            activity.startActivity(Intent(activity, ${className}::class.java))
        }
    }
}
