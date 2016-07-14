/*
 * generated by Xtext
 */
grammar InternalHiddenTokensMergerTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parsetree.reconstr.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parsetree.reconstr.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.parsetree.reconstr.services.HiddenTokensMergerTestLanguageGrammarAccess;

}

@parser::members {

 	private HiddenTokensMergerTestLanguageGrammarAccess grammarAccess;

    public InternalHiddenTokensMergerTestLanguageParser(TokenStream input, HiddenTokensMergerTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected HiddenTokensMergerTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getModelAccess().getDatatypeBug286557ParserRuleCall_0());
		}
		this_DatatypeBug286557_0=ruleDatatypeBug286557
		{
			$current = $this_DatatypeBug286557_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getEnumBugParserRuleCall_1());
		}
		this_EnumBug_1=ruleEnumBug
		{
			$current = $this_EnumBug_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getCommentableParserRuleCall_2());
		}
		this_Commentable_2=ruleCommentable
		{
			$current = $this_Commentable_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getValueListParserRuleCall_3());
		}
		this_ValueList_3=ruleValueList
		{
			$current = $this_ValueList_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getRefListParserRuleCall_4());
		}
		this_RefList_4=ruleRefList
		{
			$current = $this_RefList_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getSingleRefParserRuleCall_5());
		}
		this_SingleRef_5=ruleSingleRef
		{
			$current = $this_SingleRef_5.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getAppendToFileEndParserRuleCall_6());
		}
		this_AppendToFileEnd_6=ruleAppendToFileEnd
		{
			$current = $this_AppendToFileEnd_6.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAccess().getAction1ParserRuleCall_7());
		}
		this_Action1_7=ruleAction1
		{
			$current = $this_Action1_7.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleDatatypeBug286557
entryRuleDatatypeBug286557 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDatatypeBug286557Rule()); }
	iv_ruleDatatypeBug286557=ruleDatatypeBug286557
	{ $current=$iv_ruleDatatypeBug286557.current; }
	EOF;

// Rule DatatypeBug286557
ruleDatatypeBug286557 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#1'
		{
			newLeafNode(otherlv_0, grammarAccess.getDatatypeBug286557Access().getNumberSignDigitOneKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDatatypeBug286557Access().getNameFQNParserRuleCall_1_0());
				}
				lv_name_1_0=ruleFQN
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDatatypeBug286557Rule());
					}
					set(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.FQN");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2='ref'
			{
				newLeafNode(otherlv_2, grammarAccess.getDatatypeBug286557Access().getRefKeyword_2_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getDatatypeBug286557Rule());
						}
					}
					{
						newCompositeNode(grammarAccess.getDatatypeBug286557Access().getRefDatatypeBug286557CrossReference_2_1_0());
					}
					ruleFQN
					{
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getDatatypeBug286557Access().getSemicolonKeyword_3());
		}
	)
;

// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null]:
	{ newCompositeNode(grammarAccess.getFQNRule()); }
	iv_ruleFQN=ruleFQN
	{ $current=$iv_ruleFQN.current.getText(); }
	EOF;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;

// Entry rule entryRuleEnumBug
entryRuleEnumBug returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEnumBugRule()); }
	iv_ruleEnumBug=ruleEnumBug
	{ $current=$iv_ruleEnumBug.current; }
	EOF;

// Rule EnumBug
ruleEnumBug returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#2'
		{
			newLeafNode(otherlv_0, grammarAccess.getEnumBugAccess().getNumberSignDigitTwoKeyword_0());
		}
		otherlv_1='kw1'
		{
			newLeafNode(otherlv_1, grammarAccess.getEnumBugAccess().getKw1Keyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getEnumBugAccess().getReturnEnumBugEnumEnumRuleCall_2_0());
				}
				lv_return_2_0=ruleEnumBugEnum
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getEnumBugRule());
					}
					set(
						$current,
						"return",
						lv_return_2_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.EnumBugEnum");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getEnumBugAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getEnumBugRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleCommentable
entryRuleCommentable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCommentableRule()); }
	iv_ruleCommentable=ruleCommentable
	{ $current=$iv_ruleCommentable.current; }
	EOF;

// Rule Commentable
ruleCommentable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#3'
		{
			newLeafNode(otherlv_0, grammarAccess.getCommentableAccess().getNumberSignDigitThreeKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getCommentableAccess().getItemCommentableItemParserRuleCall_1_0());
				}
				lv_item_1_0=ruleCommentableItem
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCommentableRule());
					}
					add(
						$current,
						"item",
						lv_item_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.CommentableItem");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleCommentableItem
entryRuleCommentableItem returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCommentableItemRule()); }
	iv_ruleCommentableItem=ruleCommentableItem
	{ $current=$iv_ruleCommentableItem.current; }
	EOF;

// Rule CommentableItem
ruleCommentableItem returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='item'
		{
			newLeafNode(otherlv_0, grammarAccess.getCommentableItemAccess().getItemKeyword_0());
		}
		(
			(
				lv_id_1_0=RULE_ID
				{
					newLeafNode(lv_id_1_0, grammarAccess.getCommentableItemAccess().getIdIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCommentableItemRule());
					}
					setWithLastConsumed(
						$current,
						"id",
						lv_id_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

// Entry rule entryRuleValueList
entryRuleValueList returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getValueListRule()); }
	iv_ruleValueList=ruleValueList
	{ $current=$iv_ruleValueList.current; }
	EOF;

// Rule ValueList
ruleValueList returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#4'
		{
			newLeafNode(otherlv_0, grammarAccess.getValueListAccess().getNumberSignDigitFourKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getValueListAccess().getIdsFQNParserRuleCall_1_0());
				}
				lv_ids_1_0=ruleFQN
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getValueListRule());
					}
					add(
						$current,
						"ids",
						lv_ids_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.FQN");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleRefList
entryRuleRefList returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRefListRule()); }
	iv_ruleRefList=ruleRefList
	{ $current=$iv_ruleRefList.current; }
	EOF;

// Rule RefList
ruleRefList returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#5'
		{
			newLeafNode(otherlv_0, grammarAccess.getRefListAccess().getNumberSignDigitFiveKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getRefListAccess().getObjsRefObjParserRuleCall_1_0());
				}
				lv_objs_1_0=ruleRefObj
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRefListRule());
					}
					add(
						$current,
						"objs",
						lv_objs_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.RefObj");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_2='refs'
		{
			newLeafNode(otherlv_2, grammarAccess.getRefListAccess().getRefsKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRefListRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getRefListAccess().getRefsRefObjCrossReference_3_0());
				}
				ruleFQN
				{
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleRefObj
entryRuleRefObj returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRefObjRule()); }
	iv_ruleRefObj=ruleRefObj
	{ $current=$iv_ruleRefObj.current; }
	EOF;

// Rule RefObj
ruleRefObj returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getRefObjAccess().getNameFQNParserRuleCall_0());
			}
			lv_name_0_0=ruleFQN
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getRefObjRule());
				}
				set(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.FQN");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleSingleRef
entryRuleSingleRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSingleRefRule()); }
	iv_ruleSingleRef=ruleSingleRef
	{ $current=$iv_ruleSingleRef.current; }
	EOF;

// Rule SingleRef
ruleSingleRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#6'
		{
			newLeafNode(otherlv_0, grammarAccess.getSingleRefAccess().getNumberSignDigitSixKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSingleRefAccess().getObjRefObjParserRuleCall_1_0());
				}
				lv_obj_1_0=ruleRefObj
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSingleRefRule());
					}
					set(
						$current,
						"obj",
						lv_obj_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.RefObj");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='ref'
		{
			newLeafNode(otherlv_2, grammarAccess.getSingleRefAccess().getRefKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSingleRefRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getSingleRefAccess().getRefRefObjCrossReference_3_0());
				}
				ruleFQN
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleAppendToFileEnd
entryRuleAppendToFileEnd returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAppendToFileEndRule()); }
	iv_ruleAppendToFileEnd=ruleAppendToFileEnd
	{ $current=$iv_ruleAppendToFileEnd.current; }
	EOF;

// Rule AppendToFileEnd
ruleAppendToFileEnd returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#7'
		{
			newLeafNode(otherlv_0, grammarAccess.getAppendToFileEndAccess().getNumberSignDigitSevenKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getAppendToFileEndAccess().getItemsAppendToFileEndItemParserRuleCall_1_0());
				}
				lv_items_1_0=ruleAppendToFileEndItem
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAppendToFileEndRule());
					}
					add(
						$current,
						"items",
						lv_items_1_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.AppendToFileEndItem");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleAppendToFileEndItem
entryRuleAppendToFileEndItem returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAppendToFileEndItemRule()); }
	iv_ruleAppendToFileEndItem=ruleAppendToFileEndItem
	{ $current=$iv_ruleAppendToFileEndItem.current; }
	EOF;

// Rule AppendToFileEndItem
ruleAppendToFileEndItem returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='class'
		{
			newLeafNode(otherlv_0, grammarAccess.getAppendToFileEndItemAccess().getClassKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getAppendToFileEndItemAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAppendToFileEndItemRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2='endclass'
		{
			newLeafNode(otherlv_2, grammarAccess.getAppendToFileEndItemAccess().getEndclassKeyword_2());
		}
	)
;

// Entry rule entryRuleAction1
entryRuleAction1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAction1Rule()); }
	iv_ruleAction1=ruleAction1
	{ $current=$iv_ruleAction1.current; }
	EOF;

// Rule Action1
ruleAction1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='#8'
		{
			newLeafNode(otherlv_0, grammarAccess.getAction1Access().getNumberSignDigitEightKeyword_0());
		}
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getAction1Access().getAction1Action_1(),
					$current);
			}
		)
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getAction1Access().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAction1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getAction1Access().getActions2Action1Sub1ParserRuleCall_3_0());
				}
				lv_actions2_3_0=ruleAction1Sub1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAction1Rule());
					}
					add(
						$current,
						"actions2",
						lv_actions2_3_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.Action1Sub1");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getAction1Access().getActions2Action1Sub2ParserRuleCall_4_0());
				}
				lv_actions2_4_0=ruleAction1Sub2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAction1Rule());
					}
					add(
						$current,
						"actions2",
						lv_actions2_4_0,
						"org.eclipse.xtext.parsetree.reconstr.HiddenTokensMergerTestLanguage.Action1Sub2");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleAction1Sub1
entryRuleAction1Sub1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAction1Sub1Rule()); }
	iv_ruleAction1Sub1=ruleAction1Sub1
	{ $current=$iv_ruleAction1Sub1.current; }
	EOF;

// Rule Action1Sub1
ruleAction1Sub1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getAction1Sub1Access().getAction1SubAction_0(),
					$current);
			}
		)
		otherlv_1='sub1'
		{
			newLeafNode(otherlv_1, grammarAccess.getAction1Sub1Access().getSub1Keyword_1());
		}
	)
;

// Entry rule entryRuleAction1Sub2
entryRuleAction1Sub2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAction1Sub2Rule()); }
	iv_ruleAction1Sub2=ruleAction1Sub2
	{ $current=$iv_ruleAction1Sub2.current; }
	EOF;

// Rule Action1Sub2
ruleAction1Sub2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getAction1Sub2Access().getAction1SubClassAction_0(),
					$current);
			}
		)
		otherlv_1='sub2'
		{
			newLeafNode(otherlv_1, grammarAccess.getAction1Sub2Access().getSub2Keyword_1());
		}
	)
;

// Rule EnumBugEnum
ruleEnumBugEnum returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='array'
			{
				$current = grammarAccess.getEnumBugEnumAccess().getArrayEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getEnumBugEnumAccess().getArrayEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='object'
			{
				$current = grammarAccess.getEnumBugEnumAccess().getObjectEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getEnumBugEnumAccess().getObjectEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='resultSet'
			{
				$current = grammarAccess.getEnumBugEnumAccess().getResultSetEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getEnumBugEnumAccess().getResultSetEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='iterator'
			{
				$current = grammarAccess.getEnumBugEnumAccess().getIteratorEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getEnumBugEnumAccess().getIteratorEnumLiteralDeclaration_3());
			}
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;