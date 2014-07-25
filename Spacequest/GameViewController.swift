import UIKit
import SpriteKit


class GameViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let skView = self.view as SKView

        skView.ignoresSiblingOrder = true

        // Debugging.
        skView.showsFPS = true
        skView.showsNodeCount = true
        //skView.showsPhysics = true

        var gameScene = GameScene(size: skView.frame.size)
        
        gameScene.scaleMode = .AspectFill
        
        skView.presentScene(gameScene)
    }

    
    override func shouldAutorotate() -> Bool
    {
        return true
    }

    
    override func supportedInterfaceOrientations() -> Int
    {
        return Int(UIInterfaceOrientationMask.Landscape.toRaw())
    }

    
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
