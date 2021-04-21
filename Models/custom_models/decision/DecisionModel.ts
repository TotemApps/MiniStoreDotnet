import { Model } from "../../model/Model";

export class DecisionModel extends Model {

    public constructor() {
        super(
            "decision",
            ["DecisionElement"]
        );
    }
}