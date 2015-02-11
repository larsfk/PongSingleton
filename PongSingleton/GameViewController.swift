
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let scene = GameScene(size: view.bounds.size)
        let skVeiw = view as SKView
        skVeiw.showsFPS = true
        skVeiw.showsNodeCount = true
        skVeiw.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skVeiw.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
