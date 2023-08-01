package tech.ula.libredocs

import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import tech.ula.library.MainActivity
import tech.ula.library.model.entities.App

class MainActivity : AppCompatActivity() {

    override fun onNewIntent(intent: Intent?) {
        super.onNewIntent(intent)
        if (intent != null) {
            processIntent(intent)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        processIntent(this.intent)
    }

    fun processIntent(intent: Intent) {
        val ulaIntent = Intent(this, MainActivity::class.java)
        val app = App("libredocs", "Distribution", "libredocs", false, true, "false", false, 1)
        ulaIntent.putExtra("app", app)
        this.startActivity(ulaIntent)
        finish()
    }

}
