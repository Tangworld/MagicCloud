package MagicCloud.MasterWorkerFrame;

import java.util.ArrayList;
import java.util.List;

public class ChildrenCache {

    protected List<String> children;

    ChildrenCache() {
        this.children = null;
    }

    ChildrenCache(List<String> children) {
        this.children = children;
    }

    List<String> getList() {
        return children;
    }


//返回this.children中没有、并且newChiledren中有 的String型List
    List<String> addedAndSet(List<String> newChildren) {
        ArrayList<String> diff = null;

        if (children == null) {
            diff = new ArrayList<String>(newChildren);
        } else {
            for (String s : newChildren) {
                if (!children.contains(s)) {
                    if (diff == null) {
                        diff = new ArrayList<String>();
                    }
                    diff.add(s);
                }
            }
        }
        this.children = newChildren;
        return diff;
    }

//返回this.children中有、并且newChiledren中没有 的String型List
    List<String> removeAndSet(List<String> newChildren) {
        List<String> diff = null;
        if (children != null) {
            for (String s : children) {
                if (!newChildren.contains(s)) {
                    if (diff == null) {
                        diff = new ArrayList<String>();
                    }
                    diff.add(s);
                }
            }
        }
        this.children = newChildren;
        return diff;
    }

}
